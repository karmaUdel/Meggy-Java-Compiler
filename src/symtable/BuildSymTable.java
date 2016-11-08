package symtable;
import java.util.*;
import ast.node.*;
import ast.visitor.*;

import exceptions.InternalException;

/** 

 */
public class BuildSymTable extends DepthFirstVisitor   {
	private SymTable symTable; 
	private String currentClass; 
  private static final Type BOOL = Type.BOOL;
  private static final Type INT = Type.INT;
  private static final Type BYTE = Type.BYTE;
  private static final Type COLOR = Type.COLOR;
  private static final Type BUTTON = Type.BUTTON;
  private static final Type VOID = Type.VOID; 
  private static final Type TONE = Type.TONE;

    public BuildSymTable() {
	this.symTable= new SymTable();
	this.currentClass="";
    }
 public Type getType(IType node){
   if(node instanceof BoolType){
	return Type.BOOL;
   }
   if(node instanceof IntType)
return Type.INT;

if(node instanceof ByteType)
return Type.BYTE;

if(node instanceof ColorType)
return Type.COLOR;

if(node instanceof ButtonType)
return Type.BUTTON;


if(node instanceof ToneType)
 return Type.TONE;

return Type.VOID;
 }
    
  @Override 
   public void inPlusExp(PlusExp node)
    {
	checkExp(node.getLExp());
	checkExp(node.getRExp());
	System.out.println("plus exp");

    }

  @Override 
   public void inMinusExp(MinusExp node)
    {
	checkExp(node.getLExp());
	checkExp(node.getRExp());
	System.out.println("minus exp");
    }

  @Override 
   public void inMulExp(MulExp node)
    {
	checkExp(node.getLExp());
	checkExp(node.getRExp());
	System.out.println("mul exp");
    }

  @Override 
   public void inAndExp(AndExp node)
    {
	System.out.println("and exp");
	
	checkExp(node.getLExp());
	checkExp(node.getRExp());
    }

  @Override 
   public void inLtExp(LtExp node)
    {
	
	checkExp(node.getLExp());
	checkExp(node.getRExp());
	System.out.println("lt exp");
    }

  @Override 
   public void inNotExp(NotExp node)
    {
	
	checkExp(node.getExp());
	System.out.println("not exp");
    }


 @Override 
   public void inTrueExp(TrueLiteral node)
    {
	
	checkExp(node);
	System.out.println("true exp");
    }

 @Override 
   public void inFalseExp(FalseLiteral node)
    {
	
	checkExp(node);
	System.out.println("false exp");
    }

 @Override
  public void inMeggyCheckButton(MeggyCheckButton node)
    {
        checkExp(node);
    }

 @Override
  public void inColorExp(ColorLiteral node)
    {
        checkExp(node);
    }

 @Override
  public void inIntegerExp(IntLiteral node)
    {
        checkExp(node);
    }

 @Override
  public void inButtonExp(ButtonLiteral node)
    {
        checkExp(node);
    }

   public void inByteCast(ByteCast node)
    {
        checkExp(node.getExp());
    }


   public SymTable getSymTable()
	{
	return this.symTable;
	}


   public void checkExp(IExp exp){

	switch(exp.getClass().getSimpleName()){ 

		case "IntLiteral":
		symTable.setExpType(exp, INT);
		break;

		case "ButtonLiteral" :
		symTable.setExpType(exp, BUTTON);
		break;

		case "TrueLiteral": case "FalseLiteral":
		symTable.setExpType(exp, BOOL);
		break;

		case "ColorLiteral":
		symTable.setExpType(exp, COLOR);
		break;


	}
   
	}
/*
 */
	public void inMethodDecl(MethodDecl methodDecl) {
        MethodSTE methodSTE;
        Formal formal;
        Iterator iterator = methodDecl.getFormals().iterator();
        LinkedList<Type> linkedList = new LinkedList<Type>();
        while (iterator.hasNext()) {
            formal = (Formal)iterator.next();
            linkedList.add(this.getType(formal.getType()));
        }//get all formal parameters
        Signature sig = new Signature(this.getType(methodDecl.getType()), linkedList);//signature
        if (!this.isDuplicate(methodDecl.getName(), methodDecl.getLine(), methodDecl.getPos())) {
            methodSTE = new MethodSTE(methodDecl.getName(), sig, this.currentClass+ methodDecl.getName());
        //   System.out.println(this.currentClass);
	//ClassSTE ste= (ClassSTE) this.symTable.lookup(this.currentClass);
	//ste.setMethodSTE(methodSTE);
	}else{
	    methodSTE = new MethodSTE(methodDecl.getName()+"*", sig, this.currentClass+ methodDecl.getName()+"*");
		//create duplicate methodSTE
	}
        this.symTable.insert(methodSTE);
        this.symTable.pushScope( methodDecl.getName());
       
        methodSTE.setVarSTE("this", Type.getClassType(this.currentClass),1);
        int i=0;
	for (Formal formal2 : methodDecl.getFormals()) {
          methodSTE.setVarSTE(formal2.getName(), this.getType(formal2.getType()), 3+i);
          i++;
        
	}
    }

    public void outMethodDecl(MethodDecl methodDecl) {
        this.symTable.popScope();
        
    }

    public void inTopClassDecl(TopClassDecl topClassDecl) {
        if(!this.isDuplicate(topClassDecl.getName(), topClassDecl.getLine(), topClassDecl.getPos())){ 
	        this.currentClass = topClassDecl.getName();
       	}else{			// if duplicate class is found add duplicare to it
		//System.exit(0);
		this.currentClass = topClassDecl.getName()+"**"; 
	}
  	this.symTable.insert(new ClassSTE(this.currentClass, false, null) );
	this.symTable.pushScope(this.currentClass);//inside top class	


    }

    public void outTopClassDecl(TopClassDecl topClassDecl) {
        this.symTable.popScope();
    }

    public void inMainClass(MainClass mainClass) {
        if(!this.isDuplicate(mainClass.getName(), mainClass.getLine(), mainClass.getPos())){ 
	        this.currentClass = mainClass.getName();
       	}else{			// if duplicate class is found add duplicare to it
		//System.exit(0);
		this.currentClass = mainClass.getName()+"**"; 
	}
  	this.symTable.insert(new ClassSTE(this.currentClass, false, null) );
	this.symTable.pushScope(this.currentClass);//inside top class	
	

    }

    public void outMainClass(MainClass mainClass) {
        this.symTable.popScope();
    }

    public void inCallStatement(CallStatement callStatement){
	ClassSTE classSTE = (ClassSTE) this.symTable.lookup(this.currentClass);
	MethodSTE currentMethod = (MethodSTE)this.symTable.lookup(this.symTable.getCurrentScope().getScopeName()); // get current method {currentScope--> scopename --> lookup STE 	
	IExp exp= callStatement.getExp(); // get operation part where call is operation.name(***);
	MethodSTE method=null;
	String classname;
	System.out.println("ClassSTE "+classSTE+"Call Exp "+exp);
	String methodName="";	
	if(currentMethod!=null)
		methodName = currentMethod.getName(); 
	if(exp instanceof ThisLiteral){ //method from same class {this.name()}
	 method = classSTE.getMethodSTE(methodName); 	//method in class which is called
	}else{ // method from another class {new class().name()}
		if(exp instanceof NewExp){
		    //NewExp newExp = (NewExp) exp;
		    classname = ((NewExp) exp).getId(); 
		    ClassSTE other = (ClassSTE)this.symTable.lookup(classname);
		    method = other.getMethodSTE(methodName); // method in other class which is called
		}
    	}
	if(method!=null)
		currentMethod.getScope().setmEnclosing(method); // currentMethod references some method
	
    }
    private boolean isDuplicate(String name, int line, int pos) {
        if (this.symTable.lookupInnermost(name) != null) {
            System.err.println("[" +line+ "," +pos+ "] Duplicate name " + name);
            return true;
        }
        return false;
    }
}
