package symtable;
import java.util.*;
import ast.node.*;
import ast.visitor.*;

import exceptions.InternalException;

/** 

 */
public class BuildSymTable extends DepthFirstVisitor   {
	SymTable symTable; 
	
  private static final Type BOOL = Type.BOOL;
  private static final Type INT = Type.INT;
  private static final Type BYTE = Type.BYTE;
  private static final Type COLOR = Type.COLOR;
  private static final Type BUTTON = Type.BUTTON;
  private static final Type VOID = Type.VOID;

    public BuildSymTable() {
	symTable= new SymTable();

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


		default: 
		System.out.println("none");
	}
   
	}
/*
 */

}
