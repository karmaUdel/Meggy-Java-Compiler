package symtable;

import ast.node.MethodDecl;
import java.io.PrintStream;
import java.util.*;
import symtable.*;

public class MethodSTE extends STE {
    private Signature mSignature;
    private MethodDecl mNode;
    private Scope mScope ;

    
    public MethodSTE(String name, Signature signature,String scope) {
        super(name);
        this.mSignature = signature;
        this.mScope = new Scope(null);
	//this.setVarSTE(methodDecl);
	this.mScope.setScopeName(scope); // variable scope will be under method decl only
    }
    
    public String getScopeName(){
	return this.mScope.getScopeName();// method variable scope
    }
    public void setScope(Scope scope) {
        this.mScope = scope;
    }

    public Scope getScope() {
        return this.mScope;
    }
	
    public void setVarSTE(String name,Type type,int offset,boolean param,boolean member)//(MethodDecl methodDecl)
	{
	/*LinkedList<Formal> parameters = methodDecl.getFormals();
	if(parameters!=null){
	Iterator iterator = parameters.iterator();
	Formal formal;	
	VarSTE var;
	int i=0;	
	while(iterator.hasNext()){
	formal = iterator.next();
	
	if(formal.getName().equals("this"))
		var = new VarSTE(formal.getName(),formal.getType(),1);
	else*/
	VarSTE var = new VarSTE(name,type,offset,param,member);
	//System.out.println(name+ " "+ type);	
	mScope.insert(var);	
	
    	
   }
    public Signature getSignature() {
        return this.mSignature;
    }

    public MethodDecl getASTNode() {
        return this.mNode;
    }

    

    public LinkedList<VarSTE> getParamList() {
        List<String> declOrder = this.mScope.getDeclOrder();
        Iterator<String> iterator = declOrder.iterator();
        LinkedList<VarSTE> linkedList =new LinkedList<VarSTE>();
        while (iterator.hasNext()) {
            STE varSTE = this.mScope.lookup(iterator.next()); //lookup returns STE
	    if(((VarSTE)varSTE).isParam())
            	linkedList.add((VarSTE)varSTE); // we return VarSTE
        }
        return linkedList;
    }

    
    public LinkedList<VarSTE> getLocalList() {
        LinkedList<VarSTE> linkedList = new LinkedList<VarSTE>();
        Iterator iterator = this.mScope.getDeclOrder().iterator();
        while (iterator.hasNext()) {
            STE varSTE = this.mScope.lookup((String)iterator.next());
            if (((VarSTE)varSTE).isMember()) continue;
            linkedList.add((VarSTE)varSTE);
        }
        return linkedList;
    }
   

    public int outputDot(PrintStream printStream, int n) {
        int n2 = n;
        String signature = this.mSignature == null ? "null" : this.mSignature.toString();
        String string2 = "\t" + n2 + " [label=\" <f0> MethodSTE " + "| <f1> mName = " + this.mName + "| <f2> mSignature = " + signature + "| <f3> mScope \"];";
        printStream.println(string2);
        printStream.println("\t" + n2 + ":<f3> -> " + ++n + ":<f0>;");
        return this.mScope.outputDot(printStream, n);
    }
}
