package symtable;

import java.io.PrintStream;
import symtable.*;

public class VarSTE extends STE {
    private Type mType;
    private String mBase = "Y"; // not sure but always Y
    private int mOffset = 0; 

    public VarSTE(String name, Type type,int offSet) {
        super(name);
        this.mType = type;
	this.mOffset = offSet;
    }

    public Type getType() {
        return this.mType;
    }

    public String getBase() {
        
        return this.mBase;
    }

    public int getOffset() {
        return this.mOffset;
    }


    public int outputDot(PrintStream printStream, int n) {
        int n2 = n;
        String out = "\t" + n2 + " [label=\" <f0> VarSTE " + "| <f1> mName = " + this.getName() + "| <f2> mType = " + this.mType.toString() + "| <f3> mBase = " + this.mBase + "| <f4> mOffset = " + this.mOffset + "\"];";
        printStream.println(out);
        return n++;
    }
}
