cmd_config_parse.o = gcc -Wp,-MD,./.config_parse.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/root/dpdk/dpdk-stable-16.11.1/examples/ip_pipeline/build/include -I/root/dpdk/dpdk-stable-16.11.1/x86_64-native-linuxapp-gcc/include -include /root/dpdk/dpdk-stable-16.11.1/x86_64-native-linuxapp-gcc/include/rte_config.h -I/root/dpdk/dpdk-stable-16.11.1/examples/ip_pipeline -I/root/dpdk/dpdk-stable-16.11.1/examples/ip_pipeline/pipeline -O3 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wno-error=unused-function -Wno-error=unused-variable    -o config_parse.o -c /root/dpdk/dpdk-stable-16.11.1/examples/ip_pipeline/config_parse.c 
