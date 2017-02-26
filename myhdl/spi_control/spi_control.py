from myhdl import *

ACTIVE_LOW, INACTIVE_HIGH = 0, 1

def Counter(count, enable, reset, n):

    """ Incrementer on enable.

    count -- output
    enable -- control input, increment when rising edge
    reset -- asynchronous reset input
    n -- counter max value

    """

    @always_seq(enable.posedge, reset=reset)
    def counterLogic():
        count.next = (count + 1) % n

    return counterLogic

def SpiControl(clock, data, dataReady, send, nextField, byte, reset):
    """ Splits the 32-bit data into byte chunks
    
    data -- input data
    dataReady -- signal data is ready for transmission
    send -- toggle the transmission
    byte -- which part should be send
    """    
    @always_seq(clock.posedge, reset=reset)
    def spiLogic():
        if(dataReady):
            byte.next = data[((nextField+1)*8)-1:nextField*8];
            send.next = 1;
        else:
            send.next = 0;
            
    return spiLogic
    

from random import randrange

def testbenchCounter():
    count, enable, clock = [Signal(intbv(0)) for i in range(3)]
    reset = ResetSignal(0, active=ACTIVE_LOW, async=True)
    
    counter = Counter(count, enable, reset, n=4)

    HALF_PERIOD = delay(10)

    @always(HALF_PERIOD)
    def clockGen():
        clock.next = not clock

    @instance
    def stimulus():
        reset.next = ACTIVE_LOW
        yield clock.negedge
        reset.next = INACTIVE_HIGH
        for i in range(12):
            enable.next = min(1, randrange(3))
            yield clock.negedge
        raise StopSimulation

    @instance
    def monitor():
        print "enable  count"
        yield reset.posedge
        while 1:
            yield clock.posedge
            yield delay(1)
            print "   %s      %s" % (enable, count)

    return clockGen, stimulus, counter, monitor

def testbenchSpi():
    clock, dataReady, send, nextField = [Signal(intbv(0)) for i in range(4)]
    reset = ResetSignal(0, active=ACTIVE_LOW, async=True)

    data = Signal(intbv(2172880783,min=0,max=4294967296))
    byte = Signal(intbv(0,min=0,max=256))

    spi = SpiControl(clock, data, dataReady, send, nextField, byte, reset)

    HALF_PERIOD = delay(10)

    @always(HALF_PERIOD)
    def clockGen():
        clock.next = not clock

    @instance
    def stimulus():
        reset.next = ACTIVE_LOW
        yield clock.negedge
        reset.next = INACTIVE_HIGH
        # signal data ready
        dataReady.next = 1
        yield clock.negedge
        for i in range(10):
            if(send):
                nextField.next = (nextField + 1)%4 
                dataReady.next = 0
            else:
                dataReady.next = 1
            
            yield clock.negedge
        raise StopSimulation

    @instance
    def monitor():
        print "data: %s " % (bin(data))
        print "dataReady send nextField byte"
        yield reset.posedge
        while 1:
            yield clock.posedge
            yield delay(1)
            print "   %s      %s      %s      %s" % (dataReady, send, nextField, bin(byte))

    return clockGen, stimulus, spi, monitor


tb0 = testbenchCounter()
Simulation(tb0).run()

tb1 = testbenchSpi()
Simulation(tb1).run()

def convertSpi():
    nextField = Signal(intbv(0,min=0,max=32))
    clk, dataReady, send = [Signal(bool(0)) for i in range(3)]
    reset = ResetSignal(0, active=ACTIVE_LOW, async=True)
    data = Signal(intbv(9999,min=0,max=4294967296))
    byte = Signal(intbv(0,min=0,max=256))
    toVerilog(SpiControl, clk, data, dataReady, send, nextField, byte, reset)

convertSpi()

def convertCounter():
    enable = Signal(bool(0))
    count  = Signal(intbv(0,min=0,max=4294967296))
    reset = ResetSignal(0, active=ACTIVE_LOW, async=True)
    toVerilog(Counter, count, enable, reset, n=4)

convertCounter()