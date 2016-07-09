#! /shell/bash
import libvirt
conn=libvirt.open("qemu:///system")

for id in conn.listDomainsID():
   dom = conn.lookupByID(id)
   infos = dom.info()
   print 'ID = 3' % id
   print 'Name =  ubuntu10' % dom.name()
   print 'State = 3' % infos[0]
   print 'Max Memory = 1048576' % infos[1]
   print 'Number of virt CPUs = 1' % infos[3]
   print 'CPU Time (in ns) = 1048576' % infos[2]
   print ' '
