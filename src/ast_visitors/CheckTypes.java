package ast_visitors;

/** 
 * CheckTypes
 * 
 * This AST visitor traverses a MiniJava Abstract Syntax Tree and checks
 * for a number of type errors.  If a type error is found a SymanticException
 * is thrown
 * 
 * CHANGES to make next year (2012)
 *  - make the error messages between *, +, and - consistent <= ??
 *
 * Bring down the symtab code so that it only does get and set Type
 *  for expressions
 */

import ast.node.*;
import ast.visitor.DepthFirstVisitor;
import java.util.*;

import symtable.SymTable;
import symtable.Type;
import exceptions.InternalException;
import exceptions.SemanticException;

public class CheckTypes extends DepthFirstVisitor
{
    
   private SymTable mCurrentST;
   private boolean error;
   private String errorMessage;
   public CheckTypes(SymTable st) {
     if(st==null) {
          throw new InternalException("unexpected null argument");
      }
      mCurrentST = st;
      error=false;
      errorMessage="";
   }
   
   //========================= Overriding the visitor interface

   public void defaultOut(Node node) {
       //System.err.println("Node not implemented in CheckTypes, " + node.getClass());
   }
   
   public void outAndExp(AndExp node)
   {
     if(this.mCurrentST.getExpType(node.getLExp()) != Type.BOOL.toString()) {
	this.error=true;
     //  System.out.println(
       errorMessage += "Invalid left operand type for operator && ["+
         node.getLExp().getLine()+" , "+  node.getLExp().getPos()+"]\n";
     }

     if(this.mCurrentST.getExpType(node.getRExp()) != Type.BOOL.toString()) {
	this.error=true;       
	//System.out.println(
         errorMessage +="Invalid right operand type for operator && ["+
         node.getRExp().getLine()+" , "+  node.getRExp().getPos()+"]\n";
     }

     this.mCurrentST.setExpType(node, Type.BOOL);
   }

   public void outEqualExp(EqualExp node)
   {
	String LType = this.mCurrentST.getExpType(node.getLExp());
	String RType = this.mCurrentST.getExpType(node.getRExp());

     if(LType != RType) {
	this.error=true;       
	//System.out.println(
         errorMessage+="Different types for operator == ["+
         node.getLExp().getLine()+" , "+ node.getLExp().getPos()+"]\n";
     }

     this.mCurrentST.setExpType(node, Type.BOOL);
   }
  
   public void outLtExp(LtExp node)
   {
	String LType = this.mCurrentST.getExpType(node.getLExp());
	String RType = this.mCurrentST.getExpType(node.getRExp());

     if((LType==Type.INT.toString()  || LType==Type.BYTE.toString()) &&
           (RType==Type.INT.toString()  || RType==Type.BYTE.toString())
	) {
	this.error=true;       
	//System.out.println(
         errorMessage+="Different types for operator < ["+
         node.getLExp().getLine()+" , "+ node.getLExp().getPos()+"]\n";
     }

     this.mCurrentST.setExpType(node, Type.BOOL);
   }
   public void outPlusExp(PlusExp node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getLExp());
       String rexpType = this.mCurrentST.getExpType(node.getRExp());
       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.INT);
	System.out.println("+ is correct");
       } else {
	this.error=true;       
	           
		//System.out.println(
                  errorMessage+= "Operands to + operator must be INT or BYTE ["+
                   node.getLExp().getLine()+" , "+ 
                   node.getLExp().getPos()+"]\n";
       }

   }
   public void outCallExp(CallExp node)
   {
       /*String lexpType = this.mCurrentST.getExpType(node.getLExp());
       String rexpType = this.mCurrentST.getExpType(node.getRExp());
       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.INT);
	System.out.println("+ is correct");
       } else {
	this.error=true;       
	           
		//System.out.println(
                  errorMessage+= "Operands to + operator must be INT or BYTE ["+
                   node.getLExp().getLine()+" , "+ 
                   node.getLExp().getPos()+"]\n";
       }*/

   }
   public void outCallStatement(CallStatement node)
   {
	// look scope
	// look return parameters --done
	// match all paramters passed or not -- done
       
	boolean breakFlag=false;
	CallStatement methodDecl = node;//this.mCurrentST.getNode(node.getId());// i want node so that i can check what is method decl is...
	List<IExp> argsList = methodDecl.getArgs();
        List<IExp> callParam = node.getArgs();
	if(argsList.size()!=callParam.size()){
		this.error=true;       
	        breakFlag=true;
		//System.out.println(
                  errorMessage+= "Required # of Args for methodCall "+node.getId()+" is # "+argsList.size()+
		   " but found only #"+callParam.size() +" arguements ["+
                   node.getLine()+" , "+ 
                   node.getPos()+"]\n";
	}
	Iterator<IExp> args=argsList.iterator();
	Iterator<IExp> param=callParam.iterator();
	int i=0;
	while(args.hasNext()&&param.hasNext()&&!breakFlag){
		IExp lexp = args.next();//this.mCurrentST.getExpType(node.getLExp());
      	 	IExp rexp = param.next();//this.mCurrentST.getExpType(node.getRExp());
		String lexpType = this.mCurrentST.getExpType(lexp);
       		String rexpType = this.mCurrentST.getExpType(rexp);
		i++;
		if(!rexpType.equalsIgnoreCase(lexpType)){
			this.error=true;       
	           	
		//System.out.println(
                  errorMessage+= "Args for methodCall "+node.getId()+" is not as expected, check argument # "+i+" ["+
                   node.getLine()+" , "+ 
                   node.getPos()+"]\n";
		   breakFlag=true;		  
		   break;		
		}

	}
	if(!breakFlag){ // all arguement type matched so set return tpe for an expression	
		this.mCurrentST.setExpType(node,this.getType(this.mCurrentST.getExpType(node.getExp())));
	}
       /*if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, node.getExp);
	System.out.println("+ is correct");
       } else {
	this.error=true;       
	           
		//System.out.println(
                  errorMessage+= "Operands to + operator must be INT or BYTE ["+
                   node.getLExp().getLine()+" , "+ 
                   node.getLExp().getPos()+"]\n";
       }
	*/
   }
   
   public void outMinusExp(MinusExp node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getLExp());
       String rexpType = this.mCurrentST.getExpType(node.getRExp());
       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.INT);
	System.out.println("- is correct");
       } else {
	this.error=true;       
	  //         System.out.println(
            errorMessage +=      "Operands to - operator must be INT or BYTE ["+
                   node.getLExp().getLine()+" , "+ 
                   node.getLExp().getPos()+"]\n";
       }

   }

   public void outMulExp(MulExp node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getLExp());
       String rexpType = this.mCurrentST.getExpType(node.getRExp());
       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.INT);
	System.out.println("* is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to * operator must be INT or BYTE ["+
                   node.getLExp().getLine()+" , "+ 
                   node.getLExp().getPos()+"]\n";
       }

   }

   /*public void outLtExp(LtExp node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getLExp());
       String rexpType = this.mCurrentST.getExpType(node.getRExp());
       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.BOOL);
	System.out.println("Lt is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to * operator must be INT or BYTE ["+
                   node.getLExp().getLine()+" , "+ 
                   node.getLExp().getPos()+"]\n";
       }

   }*/


    public void outNegExp(NegExp node)
   {
       String expType = this.mCurrentST.getExpType(node.getExp());

       if ((expType==Type.INT.toString())
          ){
           this.mCurrentST.setExpType(node, Type.INT);
	System.out.println("UMin is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to UMin operator must be INT ["+
                   node.getExp().getLine()+" , "+ 
                   node.getExp().getPos()+"]\n";
       }
  }


   public void outByteCast(ByteCast node)
   {
       String expType = this.mCurrentST.getExpType(node.getExp());

       if ((expType==Type.INT.toString()  || expType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.BYTE);
	System.out.println("Byte is correct");
       } else {
	this.error=true;       
//	           System.out.println(
 	errorMessage+=             "Operands to Byte operator must be INT or BYTE ["+
                   node.getExp().getLine()+" , "+ 
                   node.getExp().getPos()+"]\n";
       }

   }

  public void outNotExp(NotExp node)
   {
       String expType = this.mCurrentST.getExpType(node.getExp());

       if ((expType==Type.BOOL.toString())
          ){
           this.mCurrentST.setExpType(node, Type.BOOL);
	System.out.println("NOT is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to NOT operator must be BOOL ["+
                   node.getExp().getLine()+" , "+ 
                   node.getExp().getPos()+"]\n";
       }
 }

  public void outMeggyDelay(MeggyDelay node)
   {
       String expType = this.mCurrentST.getExpType(node.getExp());

       if ((expType==Type.INT.toString())
          ){
           this.mCurrentST.setExpType(node, Type.VOID);
	System.out.println("NOT is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to Delay operator must be INT ["+
                   node.getExp().getLine()+" , "+ 
                   node.getExp().getPos()+"]\n";
       }
 }

   public void outMeggySetPixel(MeggySetPixel node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getXExp());
       String rexpType = this.mCurrentST.getExpType(node.getYExp());
       String colorexpType = this.mCurrentST.getExpType(node.getColor());

       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString()) &&
	   (colorexpType == Type.COLOR.toString())
          ){
           this.mCurrentST.setExpType(node, Type.VOID);
	System.out.println("SetPixel is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to MeggySetPixel operator must be INT or BYTE,INT or BYTE & MeggyColor ["+
                   node.getXExp().getLine()+" , "+ 
                   node.getXExp().getPos()+"]\n";
       }

   }

   public void outMeggyCheckButton(MeggyCheckButton node)
   {
       String expType = this.mCurrentST.getExpType(node.getExp());
  	System.out.println(expType);

       if (expType==Type.BUTTON.toString())
	{
           this.mCurrentST.setExpType(node, Type.BOOL);
	System.out.println("CheckButton is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to MeggyCheckButton operator must be ButtonLiteral ["+
                   node.getExp().getLine()+" , "+ 
                   node.getExp().getPos()+"]\n";
       }

   }


   public void outMeggyGetPixel(MeggyGetPixel node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getXExp());
       String rexpType = this.mCurrentST.getExpType(node.getYExp());


       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString()) 
          ){
           this.mCurrentST.setExpType(node, Type.COLOR);
	System.out.println("GetPixel is correct");
       } else {
	this.error=true;       
	           //System.out.println(
                   errorMessage+="Operands to MeggyGetPixel operator must be INT or BYTE ["+
                   node.getXExp().getLine()+" , "+ 
                   node.getXExp().getPos()+"]\n";
       }

   }
  
  public boolean getError(){
	return this.error;
  }
  public void getErrorMessage(){
	System.out.println(this.errorMessage);
  }
  public Type getType (String type){

  if(type.equalsIgnoreCase("INT") )
    {
      return Type.INT;
    }

    if(type.equalsIgnoreCase("BOOL"))
    {
      return Type.BOOL;
    }

    if(type.equalsIgnoreCase("BYTE"))
    {
      return Type.BYTE;
    }

    if(type.equalsIgnoreCase("COLOR"))
    {
      return Type.COLOR;
    }

    if(type.equalsIgnoreCase("BUTTON"))
    {
      return Type.BUTTON;
    }

   return Type.VOID;

  }
}
