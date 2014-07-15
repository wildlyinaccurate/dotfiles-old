class camelCaseSimple(object):
    name = "camelCaseSimple"
    style = 'camelCase' # can also be snakeCase
    getter = """
/**
* Get %(description)s
*
* @return %(type)s
*/
public function get%(normalizedName)s()
{
    return $this->%(name)s;
}
"""

    setter = """
/**
* Set %(description)s
*
* @param  %(type)s $%(name)s
* @return self
*/
public function set%(normalizedName)s(%(typeHint)s $%(name)s)
{
    $this->%(name)s = $%(name)s;

    return $this;
}
"""
