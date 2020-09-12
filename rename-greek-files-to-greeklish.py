from greeklish.converter import Converter
from pprint import pprint
import sys

line=sys.argv[1]
myconverter = Converter(max_expansions=1)
converter_str=myconverter.convert(line)
pprint(converter_str[0])


