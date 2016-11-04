package symtable;
import java.util.*;
import ast.node.*;
import ast_visitors.*;

import exceptions.InternalException;

/** 
 * SymTable
 * ....
 * The symbol table also keeps a mapping of expression nodes to
 * types because that information is needed elsewhere especially
 * when looking up method call information.
 * 
 * @author mstrout
 * WB: Simplified to only expression types
 */
public class SymTable {
   // private final HashMap<String,Scope> mExpType = new HashMap<String,Scope>();
	private final HashMap<Node,String> mExpType = new HashMap<Node,String>();
		
	private String mGlobalScope;


	public void pushScope(String scope)
	{

	}

    
    public void setExpType(Node exp, Type t)
    {
    	this.mExpType.put(exp, t.toString());
    }
    
    public String getExpType(Node exp)
    {
    	return this.mExpType.get(exp);
    }
	/*public Node getNode(String expression){
		return this.mExpType.get(expression);
	}*/
	public void outputDot(java.io.PrintWriter ps)
	{ 	
		DotVisitorWithMap visitor = new DotVisitorWithMap(ps,this.mExpType);
		for (Node name: mExpType.keySet()){

			    String key =name.toString();
			    String value = mExpType.get(name).toString();  
			   // System.out.println(key + " " + value);  
			visitor.defaultIn(name);
		} 
		ps.flush();


	}
   
/*
 */

}
