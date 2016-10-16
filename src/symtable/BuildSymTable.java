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
	public void inAndExp(AndExp node)
    {
        System.out.println("and exp");
    }
    
  @Override 
   public void inPlusExp(PlusExp node)
    {
	checkExp(node.getLExp());
	checkExp(node.getRExp());
	System.out.println("plus exp");
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

		default: 
		symTable.setExpType(exp, VOID);
	}
   
	}
/*
 */

}
