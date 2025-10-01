// A process definition.

// For examples, see:
// https://thegraybook.vvvv.org/reference/extending/writing-nodes.html#examples

namespace Template;

[ProcessNode]
public class ProcessTemplate
{
    private int _value;

    public int Update(int increment)
    {
        return _value += increment;
    }
}