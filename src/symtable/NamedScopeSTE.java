package symtable;

import ast.node.TopClassDecl;
import java.io.PrintStream;
import symtable.*;

public abstract class NamedScopeSTE extends STE {
    private Scope mScope;
    //public String mName;

    public NamedScopeSTE(String name) {
       //this.mName = name;
       super(name);
       this.mScope= new Scope(null);
       
    }

    public String getScopeName(){
	return this.mScope.getScopeName();// Class method scope
    }
    public void setScope(Scope scope) {
        this.mScope = scope;
    }

    public Scope getScope() {
        return this.mScope;
    }
    public abstract int outputDot(PrintStream var1, int var2);

    

}
