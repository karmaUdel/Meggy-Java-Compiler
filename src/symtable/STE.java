
package symtable;

import java.io.PrintStream;

public abstract class STE {
    public String mName;
    public STE(String name){
	this.mName=name;
    }
    public void setName(String name){
	this.mName=name;
    } 
    public String getName() {
        return this.mName;
    }

    public abstract int outputDot(PrintStream var1, int var2);
}
