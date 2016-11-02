package symtable;
import java.util.*;


public class Scope{


    public  HashMap<String,STE> mHashMap = new HashMap<String,STE>();

    public boolean STElookup(String name)
    {
        if(this.mHashMap.containsKey(name))
            return true;
        else return false;
    }

    public insert (STE ste)
    {
        mHashMap.put(STE.getName(),ste);
    }


}
