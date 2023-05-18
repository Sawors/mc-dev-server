@ECHO OFF

cd "_server\proxy\"

set proxy="waterfall-1.19-516"

"%JAVA_HOME%\bin\java" -Xmx512M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -Dwaterfall.packet-decode-logging=true -jar %proxy%.jar