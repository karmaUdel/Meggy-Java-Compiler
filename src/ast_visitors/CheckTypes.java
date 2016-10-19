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
   
   public CheckTypes(SymTable st) {
     if(st==null) {
          throw new InternalException("unexpected null argument");
      }
      mCurrentST = st;
   }
   
   //========================= Overriding the visitor interface

   public void defaultOut(Node node) {
       System.err.println("Node not implemented in CheckTypes, " + node.getClass());
   }
   
   public void outAndExp(AndExp node)
   {
     if(this.mCurrentST.getExpType(node.getLExp()) != Type.BOOL.toString()) {
       throw new SemanticException(
         "Invalid left operand type for operator &&",
         node.getLExp().getLine(), node.getLExp().getPos());
     }

     if(this.mCurrentST.getExpType(node.getRExp()) != Type.BOOL.toString()) {
       throw new SemanticException(
         "Invalid right operand type for operator &&",
         node.getRExp().getLine(), node.getRExp().getPos());
     }

     this.mCurrentST.setExpType(node, Type.BOOL);
   }

   public void outEqualExp(EqualExp node)
   {
	String LType = this.mCurrentST.getExpType(node.getLExp());
	String RType = this.mCurrentST.getExpType(node.getRExp());

     if(LType != RType) {
       throw new SemanticException(
         "Different types for operator ==",
         node.getLExp().getLine(), node.getLExp().getPos());
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
           throw new SemanticException(
                   "Operands to + operator must be INT or BYTE",
                   node.getLExp().getLine(),
                   node.getLExp().getPos());
       }

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
           throw new SemanticException(
                   "Operands to - operator must be INT or BYTE",
                   node.getLExp().getLine(),
                   node.getLExp().getPos());
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
           throw new SemanticException(
                   "Operands to * operator must be INT or BYTE",
                   node.getLExp().getLine(),
                   node.getLExp().getPos());
       }

   }

   public void outLtExp(LtExp node)
   {
       String lexpType = this.mCurrentST.getExpType(node.getLExp());
       String rexpType = this.mCurrentST.getExpType(node.getRExp());
       if ((lexpType==Type.INT.toString()  || lexpType==Type.BYTE.toString()) &&
           (rexpType==Type.INT.toString()  || rexpType==Type.BYTE.toString())
          ){
           this.mCurrentST.setExpType(node, Type.BOOL);
	System.out.println("Lt is correct");
       } else {
           throw new SemanticException(
                   "Operands to * operator must be INT or BYTE",
                   node.getLExp().getLine(),
                   node.getLExp().getPos());
       }

   }


    public void outNegExp(NegExp node)
   {
       String expType = this.mCurrentST.getExpType(node.getExp());

       if ((expType==Type.INT.toString())
          ){
           this.mCurrentST.setExpType(node, Type.INT);
	System.out.println("UMin is correct");
       } else {
           throw new SemanticException(
                   "Operands to UMin operator must be INT",
                   node.getExp().getLine(),
                   node.getExp().getPos());
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
           throw new SemanticException(
                   "Operands to Byte operator must be INT or BYTE",
                   node.getExp().getLine(),
                   node.getExp().getPos());
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
           throw new SemanticException(
                   "Operands to NOT operator must be BOOL",
                   node.getExp().getLine(),
                   node.getExp().getPos());
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
           throw new SemanticException(
                   "Operands to Delay operator must be INT",
                   node.getExp().getLine(),
                   node.getExp().getPos());
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
           throw new SemanticException(
                   "Operands to MeggySetPixel operator must be INT or BYTE,INT or BYTE & MeggyColor",
                   node.getXExp().getLine(),
                   node.getXExp().getPos());
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
           throw new SemanticException(
                   "Operands to MeggyCheckButton operator must be ButtonLiteral",
                   node.getExp().getLine(),
                   node.getExp().getPos());
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
           throw new SemanticException(
                   "Operands to MeggyGetPixel operator must be INT or BYTE",
                   node.getXExp().getLine(),
                   node.getXExp().getPos());
       }

   }
  

}
