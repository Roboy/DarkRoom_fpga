#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"
#include "can.hpp"
#include <limits.h>

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

int main(int argc, char *argv[]) {

	void *virtual_base;
	int fd;
	int loop_count;
	int led_direction = 0;
	int led_mask = 0x01;
	void *h2p_lw_led_addr, *h2p_lw_darkroom_addr;

	// map the address space for the LED registers into user space so we can interact with them.
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span

	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}

	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );

	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return( 1 );
	}
	
	h2p_lw_led_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + LED_PIO_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_darkroom_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + DARKROOM_0_BASE ) & ( unsigned long)( HW_REGS_MASK ) );

	while(1){
		printf("--------------------------------------\n");
		uint32_t reg = IORD(h2p_lw_darkroom_addr, 0x0);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x1);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x2);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x3);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x4);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x5);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x6);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x7);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x8);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));
		reg = IORD(h2p_lw_darkroom_addr, 0x9);
		printf("sensor %d, lighthouse %d, rotor %d, duration %d\n",reg&0x1FF, (reg>>9)&0x1, (reg>>10)&0x1, (reg>>13));

		usleep(10000);
	}

	// clean up our memory mapping and exit
	if( munmap( virtual_base, HW_REGS_SPAN ) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
		close( fd );
		return( 1 );
	}

	close( fd );

	return( 0 );
}
