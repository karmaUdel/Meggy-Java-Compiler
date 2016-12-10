package symtable;

import ast.node.Node;
import java.io.PrintStream;
import java.util.*;
import symtable.*;

public class SymTable {
    private final Stack<Scope> mScopeStack = new Stack();
    private final Scope mGlobalScope = new Scope(null);
    private final HashMap<Node, String> mExpType = new HashMap();
    
    public SymTable() {
        this.mScopeStack.push(this.mGlobalScope);
    }

    public STE lookup(String name) {
        Scope scope = this.mScopeStack.peek();
	//System.out.println("***TopSCOPE " + scope.getScopeName());
        if(scope.lookup(name)==null)
	{
	if(scope.getmEnclosing()!=null){
	//System.out.println("SCOPE is null and we are looking for " + name +"  inside mEnclosing which is  "+scope.getmEnclosing().getScopeName());
        //System.out.println("We found "+scope.getmEnclosing().lookup(name).getName());
	return scope.getmEnclosing().lookup(name);
	}
	
	}
	//System.out.println("***scope.lookup(name) "+scope.lookup(name));

	return scope.lookup(name);	
    }

    public Scope getCurrentScope(){
	return this.mScopeStack.peek();
    }
    public Scope getGlobalScope(){
	return this.mGlobalScope;
    }
   
    public STE lookupInnermost(String name) {
        Scope scope = this.mScopeStack.peek();
        return scope.lookupInnermost(name);
    }

    public void insert(STE sTE) {
        Scope scope = this.mScopeStack.peek();
	//System.out.println("Scope is "+scope.getScopeName());	
        scope.insert(sTE);
    }

    public void pushScope(String name) {
        STE sTE = this.lookup(name);// look for the scope of the method
	//System.out.println("STE in pushscope "+ sTE);
	if(sTE instanceof MethodSTE)
	 { MethodSTE m=(MethodSTE)sTE;

		//System.out.println("push scope method " +m.getScope().getScopeName());
		this.mScopeStack.push(m.getScope());
	  }
	else if( sTE instanceof ClassSTE)        
	 {	ClassSTE c=(ClassSTE)sTE;
		//System.out.println("push scope class " +c.getName());
		this.mScopeStack.push(c.getScope()); // if STE is method or Class then push scope

	 }
	else
		System.out.println("No such scope is defined :"+ name);
    }


    
    public void popScope() {
	if(!mScopeStack.empty()){

        	this.mScopeStack.pop();
	}
    }

    public void setExpType(Node node, Type type) {
        this.mExpType.put(node, type.toString());
    }

    public String getExpType(Node node) {
        return this.mExpType.get(node);
    }



    public void outputDot(PrintStream printStream) {
        printStream.println("digraph SymTable {");
        printStream.println("\tgraph [rankdir=\"LR\"];");
        printStream.println("\tnode [shape=record];");
        this.mGlobalScope.outputDot(printStream, 0);
        printStream.println("}");
    }
}
