package symtable;
import java.util.*;


public class Scope{

    public  HashMap<String,STE> mHashMap = new HashMap<String,STE>();

    public STElookup(String name)
    {
    }

    public insert (STE ste)
    {
        mHashMap.put(STE.getName(),ste);
    }


}
