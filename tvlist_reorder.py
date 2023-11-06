import xml.etree.ElementTree as ET

tree = ET.parse('TvList.xml')
root = tree.getroot()

counter = 1

for tvid in root.findall('.//tvid'):
    tvid.text = str(counter)
    counter += 1

tree.write('TvList_fix.xml')
