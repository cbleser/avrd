module avr.io_base;

public import avr.specs;

// using version here instead of comparing __AVR_DEVICE_NAME__ because it produced LLVM invalid bitcast errors

version (__AVR_AT94K__)
	public import avr.device.io_at94k;
else version (__AVR_AT43USB320__)
	public import avr.device.io_43u32x;
else version (__AVR_AT43USB355__)
	public import avr.device.io_43u35x;
else version (__AVR_AT76C711__)
	public import avr.device.io_76c711;
else version (__AVR_AT86RF401__)
	public import avr.device.io_86r401;
else version (__AVR_AT90PWM1__)
	public import avr.device.io_90pwm1;
else version (__AVR_AT90PWM2__)
	public import avr.device.io_90pwmx;
else version (__AVR_AT90PWM2B__)
	public import avr.device.io_90pwm2b;
else version (__AVR_AT90PWM3__)
	public import avr.device.io_90pwmx;
else version (__AVR_AT90PWM3B__)
	public import avr.device.io_90pwm3b;
else version (__AVR_AT90PWM216__)
	public import avr.device.io_90pwm216;
else version (__AVR_AT90PWM316__)
	public import avr.device.io_90pwm316;
else version (__AVR_AT90PWM161__)
	public import avr.device.io_90pwm161;
else version (__AVR_AT90PWM81__)
	public import avr.device.io_90pwm81;
else version (__AVR_ATmega8U2__)
	public import avr.device.io_m8u2;
else version (__AVR_ATmega16M1__)
	public import avr.device.io_m16m1;
else version (__AVR_ATmega16U2__)
	public import avr.device.io_m16u2;
else version (__AVR_ATmega16U4__)
	public import avr.device.io_m16u4;
else version (__AVR_ATmega32C1__)
	public import avr.device.io_m32c1;
else version (__AVR_ATmega32M1__)
	public import avr.device.io_m32m1;
else version (__AVR_ATmega32U2__)
	public import avr.device.io_m32u2;
else version (__AVR_ATmega32U4__)
	public import avr.device.io_m32u4;
else version (__AVR_ATmega32U6__)
	public import avr.device.io_m32u6;
else version (__AVR_ATmega64C1__)
	public import avr.device.io_m64c1;
else version (__AVR_ATmega64M1__)
	public import avr.device.io_m64m1;
else version (__AVR_ATmega128__)
	public import avr.device.io_m128;
else version (__AVR_ATmega128A__)
	public import avr.device.io_m128a;
else version (__AVR_ATmega1280__)
	public import avr.device.io_m1280;
else version (__AVR_ATmega1281__)
	public import avr.device.io_m1281;
else version (__AVR_ATmega1284__)
	public import avr.device.io_m1284;
else version (__AVR_ATmega1284P__)
	public import avr.device.io_m1284p;
else version (__AVR_ATmega128RFA1__)
	public import avr.device.io_m128rfa1;
else version (__AVR_ATmega1284RFR2__)
	public import avr.device.io_m1284rfr2;
else version (__AVR_ATmega128RFR2__)
	public import avr.device.io_m128rfr2;
else version (__AVR_ATmega2564RFR2__)
	public import avr.device.io_m2564rfr2;
else version (__AVR_ATmega256RFR2__)
	public import avr.device.io_m256rfr2;
else version (__AVR_ATmega2560__)
	public import avr.device.io_m2560;
else version (__AVR_ATmega2561__)
	public import avr.device.io_m2561;
else version (__AVR_AT90CAN32__)
	public import avr.device.io_can32;
else version (__AVR_AT90CAN64__)
	public import avr.device.io_can64;
else version (__AVR_AT90CAN128__)
	public import avr.device.io_can128;
else version (__AVR_AT90USB82__)
	public import avr.device.io_usb82;
else version (__AVR_AT90USB162__)
	public import avr.device.io_usb162;
else version (__AVR_AT90USB646__)
	public import avr.device.io_usb646;
else version (__AVR_AT90USB647__)
	public import avr.device.io_usb647;
else version (__AVR_AT90USB1286__)
	public import avr.device.io_usb1286;
else version (__AVR_AT90USB1287__)
	public import avr.device.io_usb1287;
else version (__AVR_ATmega644RFR2__)
	public import avr.device.io_m644rfr2;
else version (__AVR_ATmega64RFR2__)
	public import avr.device.io_m64rfr2;
else version (__AVR_ATmega64__)
	public import avr.device.io_m64;
else version (__AVR_ATmega64A__)
	public import avr.device.io_m64a;
else version (__AVR_ATmega640__)
	public import avr.device.io_m640;
else version (__AVR_ATmega644__)
	public import avr.device.io_m644;
else version (__AVR_ATmega644A__)
	public import avr.device.io_m644a;
else version (__AVR_ATmega644P__)
	public import avr.device.io_m644p;
else version (__AVR_ATmega644PA__)
	public import avr.device.io_m644pa;
else version (__AVR_ATmega645__)
	public import avr.device.io_m645;
else version (__AVR_ATmega645A__)
	public import avr.device.io_m645;
else version (__AVR_ATmega645P__)
	public import avr.device.io_m645;
else version (__AVR_ATmega6450__)
	public import avr.device.io_m6450;
else version (__AVR_ATmega6450A__)
	public import avr.device.io_m6450;
else version (__AVR_ATmega6450P__)
	public import avr.device.io_m6450;
else version (__AVR_ATmega649__)
	public import avr.device.io_m649;
else version (__AVR_ATmega649A__)
	public import avr.device.io_m649;
else version (__AVR_ATmega6490__)
	public import avr.device.io_m6490;
else version (__AVR_ATmega6490A__)
	public import avr.device.io_m6490;
else version (__AVR_ATmega6490P__)
	public import avr.device.io_m6490;
else version (__AVR_ATmega649P__)
	public import avr.device.io_m649p;
else version (__AVR_ATmega64HVE__)
	public import avr.device.io_m64hve;
else version (__AVR_ATmega64HVE2__)
	public import avr.device.io_m64hve2;
else version (__AVR_ATmega103__)
	public import avr.device.io_m103;
else version (__AVR_ATmega32__)
	public import avr.device.io_m32;
else version (__AVR_ATmega32A__)
	public import avr.device.io_m32a;
else version (__AVR_ATmega323__)
	public import avr.device.io_m323;
else version (__AVR_ATmega324P__)
	public import avr.device.io_m324;
else version (__AVR_ATmega324A__)
	public import avr.device.io_m324;
else version (__AVR_ATmega324PA__)
	public import avr.device.io_m324pa;
else version (__AVR_ATmega325__)
	public import avr.device.io_m325;
else version (__AVR_ATmega325A__)
	public import avr.device.io_m325;
else version (__AVR_ATmega325P__)
	public import avr.device.io_m325;
else version (__AVR_ATmega325PA__)
	public import avr.device.io_m325pa;
else version (__AVR_ATmega3250__)
	public import avr.device.io_m3250;
else version (__AVR_ATmega3250A__)
	public import avr.device.io_m3250;
else version (__AVR_ATmega3250P__)
	public import avr.device.io_m3250;
else version (__AVR_ATmega3250PA__)
	public import avr.device.io_m3250pa;
else version (__AVR_ATmega328P__)
	public import avr.device.io_m328p;
else version (__AVR_ATmega328__)
	public import avr.device.io_m328p;
else version (__AVR_ATmega329__)
	public import avr.device.io_m329;
else version (__AVR_ATmega329A__)
	public import avr.device.io_m329;
else version (__AVR_ATmega329P__)
	public import avr.device.io_m329;
else version (__AVR_ATmega329PA__)
	public import avr.device.io_m329;
else version (__AVR_ATmega3290__)
	public import avr.device.io_m3290;
else version (__AVR_ATmega3290A__)
	public import avr.device.io_m3290;
else version (__AVR_ATmega3290P__)
	public import avr.device.io_m3290;
else version (__AVR_ATmega3290PA__)
	public import avr.device.io_m3290pa;
else version (__AVR_ATmega32HVB__)
	public import avr.device.io_m32hvb;
else version (__AVR_ATmega32HVBREVB__)
	public import avr.device.io_m32hvbrevb;
else version (__AVR_ATmega406__)
	public import avr.device.io_m406;
else version (__AVR_ATmega16__)
	public import avr.device.io_m16;
else version (__AVR_ATmega16A__)
	public import avr.device.io_m16a;
else version (__AVR_ATmega161__)
	public import avr.device.io_m161;
else version (__AVR_ATmega162__)
	public import avr.device.io_m162;
else version (__AVR_ATmega163__)
	public import avr.device.io_m163;
else version (__AVR_ATmega164P__)
	public import avr.device.io_m164;
else version (__AVR_ATmega164A__)
	public import avr.device.io_m164;
else version (__AVR_ATmega164PA__)
	public import avr.device.io_m164pa;
else version (__AVR_ATmega165__)
	public import avr.device.io_m165;
else version (__AVR_ATmega165A__)
	public import avr.device.io_m165a;
else version (__AVR_ATmega165P__)
	public import avr.device.io_m165p;
else version (__AVR_ATmega165PA__)
	public import avr.device.io_m165pa;
else version (__AVR_ATmega168__)
	public import avr.device.io_m168;
else version (__AVR_ATmega168A__)
	public import avr.device.io_m168a;
else version (__AVR_ATmega168P__)
	public import avr.device.io_m168p;
else version (__AVR_ATmega168PA__)
	public import avr.device.io_m168pa;
else version (__AVR_ATmega169__)
	public import avr.device.io_m169;
else version (__AVR_ATmega169A__)
	public import avr.device.io_m169;
else version (__AVR_ATmega169P__)
	public import avr.device.io_m169p;
else version (__AVR_ATmega169PA__)
	public import avr.device.io_m169pa;
else version (__AVR_ATmega8HVA__)
	public import avr.device.io_m8hva;
else version (__AVR_ATmega16HVA__)
	public import avr.device.io_m16hva;
else version (__AVR_ATmega16HVA2__)
	public import avr.device.io_m16hva2;
else version (__AVR_ATmega16HVB__)
	public import avr.device.io_m16hvb;
else version (__AVR_ATmega16HVBREVB__)
	public import avr.device.io_m16hvbrevb;
else version (__AVR_ATmega8__)
	public import avr.device.io_m8;
else version (__AVR_ATmega8A__)
	public import avr.device.io_m8a;
else version (__AVR_ATmega48__)
	public import avr.device.io_m48;
else version (__AVR_ATmega48A__)
	public import avr.device.io_m48a;
else version (__AVR_ATmega48PA__)
	public import avr.device.io_m48pa;
else version (__AVR_ATmega48PB__)
	public import avr.device.io_m48pb;
else version (__AVR_ATmega48P__)
	public import avr.device.io_m48p;
else version (__AVR_ATmega88__)
	public import avr.device.io_m88;
else version (__AVR_ATmega88A__)
	public import avr.device.io_m88a;
else version (__AVR_ATmega88P__)
	public import avr.device.io_m88p;
else version (__AVR_ATmega88PA__)
	public import avr.device.io_m88pa;
else version (__AVR_ATmega88PB__)
	public import avr.device.io_m88pb;
else version (__AVR_ATmega8515__)
	public import avr.device.io_m8515;
else version (__AVR_ATmega8535__)
	public import avr.device.io_m8535;
else version (__AVR_AT90S8535__)
	public import avr.device.io_8535;
else version (__AVR_AT90C8534__)
	public import avr.device.io_8534;
else version (__AVR_AT90S8515__)
	public import avr.device.io_8515;
else version (__AVR_AT90S4434__)
	public import avr.device.io_4434;
else version (__AVR_AT90S4433__)
	public import avr.device.io_4433;
else version (__AVR_AT90S4414__)
	public import avr.device.io_4414;
else version (__AVR_ATtiny22__)
	public import avr.device.io_tn22;
else version (__AVR_ATtiny26__)
	public import avr.device.io_tn26;
else version (__AVR_AT90S2343__)
	public import avr.device.io_2343;
else version (__AVR_AT90S2333__)
	public import avr.device.io_2333;
else version (__AVR_AT90S2323__)
	public import avr.device.io_2323;
else version (__AVR_AT90S2313__)
	public import avr.device.io_2313;
else version (__AVR_ATtiny4__)
	public import avr.device.io_tn4;
else version (__AVR_ATtiny5__)
	public import avr.device.io_tn5;
else version (__AVR_ATtiny9__)
	public import avr.device.io_tn9;
else version (__AVR_ATtiny10__)
	public import avr.device.io_tn10;
else version (__AVR_ATtiny20__)
	public import avr.device.io_tn20;
else version (__AVR_ATtiny40__)
	public import avr.device.io_tn40;
else version (__AVR_ATtiny2313__)
	public import avr.device.io_tn2313;
else version (__AVR_ATtiny2313A__)
	public import avr.device.io_tn2313a;
else version (__AVR_ATtiny13__)
	public import avr.device.io_tn13;
else version (__AVR_ATtiny13A__)
	public import avr.device.io_tn13a;
else version (__AVR_ATtiny25__)
	public import avr.device.io_tn25;
else version (__AVR_ATtiny4313__)
	public import avr.device.io_tn4313;
else version (__AVR_ATtiny45__)
	public import avr.device.io_tn45;
else version (__AVR_ATtiny85__)
	public import avr.device.io_tn85;
else version (__AVR_ATtiny24__)
	public import avr.device.io_tn24;
else version (__AVR_ATtiny24A__)
	public import avr.device.io_tn24a;
else version (__AVR_ATtiny44__)
	public import avr.device.io_tn44;
else version (__AVR_ATtiny44A__)
	public import avr.device.io_tn44a;
else version (__AVR_ATtiny441__)
	public import avr.device.io_tn441;
else version (__AVR_ATtiny84__)
	public import avr.device.io_tn84;
else version (__AVR_ATtiny84A__)
	public import avr.device.io_tn84a;
else version (__AVR_ATtiny841__)
	public import avr.device.io_tn841;
else version (__AVR_ATtiny261__)
	public import avr.device.io_tn261;
else version (__AVR_ATtiny261A__)
	public import avr.device.io_tn261a;
else version (__AVR_ATtiny461__)
	public import avr.device.io_tn461;
else version (__AVR_ATtiny461A__)
	public import avr.device.io_tn461a;
else version (__AVR_ATtiny861__)
	public import avr.device.io_tn861;
else version (__AVR_ATtiny861A__)
	public import avr.device.io_tn861a;
else version (__AVR_ATtiny43U__)
	public import avr.device.io_tn43u;
else version (__AVR_ATtiny48__)
	public import avr.device.io_tn48;
else version (__AVR_ATtiny88__)
	public import avr.device.io_tn88;
else version (__AVR_ATtiny828__)
	public import avr.device.io_tn828;
else version (__AVR_ATtiny87__)
	public import avr.device.io_tn87;
else version (__AVR_ATtiny167__)
	public import avr.device.io_tn167;
else version (__AVR_ATtiny1634__)
	public import avr.device.io_tn1634;
else version (__AVR_AT90SCR100__)
	public import avr.device.io_90scr100;
else version (__AVR_ATxmega8E5__)
	public import avr.device.io_x8e5;
else version (__AVR_ATxmega16A4__)
	public import avr.device.io_x16a4;
else version (__AVR_ATxmega16A4U__)
	public import avr.device.io_x16a4u;
else version (__AVR_ATxmega16C4__)
	public import avr.device.io_x16c4;
else version (__AVR_ATxmega16D4__)
	public import avr.device.io_x16d4;
else version (__AVR_ATxmega32A4__)
	public import avr.device.io_x32a4;
else version (__AVR_ATxmega32A4U__)
	public import avr.device.io_x32a4u;
else version (__AVR_ATxmega32C3__)
	public import avr.device.io_x32c3;
else version (__AVR_ATxmega32C4__)
	public import avr.device.io_x32c4;
else version (__AVR_ATxmega32D3__)
	public import avr.device.io_x32d3;
else version (__AVR_ATxmega32D4__)
	public import avr.device.io_x32d4;
else version (__AVR_ATxmega32E5__)
	public import avr.device.io_x32e5;
else version (__AVR_ATxmega64A1__)
	public import avr.device.io_x64a1;
else version (__AVR_ATxmega64A1U__)
	public import avr.device.io_x64a1u;
else version (__AVR_ATxmega64A3__)
	public import avr.device.io_x64a3;
else version (__AVR_ATxmega64A3U__)
	public import avr.device.io_x64a3u;
else version (__AVR_ATxmega64A4U__)
	public import avr.device.io_x64a4u;
else version (__AVR_ATxmega64B1__)
	public import avr.device.io_x64b1;
else version (__AVR_ATxmega64B3__)
	public import avr.device.io_x64b3;
else version (__AVR_ATxmega64C3__)
	public import avr.device.io_x64c3;
else version (__AVR_ATxmega64D3__)
	public import avr.device.io_x64d3;
else version (__AVR_ATxmega64D4__)
	public import avr.device.io_x64d4;
else version (__AVR_ATxmega128A1__)
	public import avr.device.io_x128a1;
else version (__AVR_ATxmega128A1U__)
	public import avr.device.io_x128a1u;
else version (__AVR_ATxmega128A4U__)
	public import avr.device.io_x128a4u;
else version (__AVR_ATxmega128A3__)
	public import avr.device.io_x128a3;
else version (__AVR_ATxmega128A3U__)
	public import avr.device.io_x128a3u;
else version (__AVR_ATxmega128B1__)
	public import avr.device.io_x128b1;
else version (__AVR_ATxmega128B3__)
	public import avr.device.io_x128b3;
else version (__AVR_ATxmega128C3__)
	public import avr.device.io_x128c3;
else version (__AVR_ATxmega128D3__)
	public import avr.device.io_x128d3;
else version (__AVR_ATxmega128D4__)
	public import avr.device.io_x128d4;
else version (__AVR_ATxmega192A3__)
	public import avr.device.io_x192a3;
else version (__AVR_ATxmega192A3U__)
	public import avr.device.io_x192a3u;
else version (__AVR_ATxmega192C3__)
	public import avr.device.io_x192c3;
else version (__AVR_ATxmega192D3__)
	public import avr.device.io_x192d3;
else version (__AVR_ATxmega256A3__)
	public import avr.device.io_x256a3;
else version (__AVR_ATxmega256A3U__)
	public import avr.device.io_x256a3u;
else version (__AVR_ATxmega256A3B__)
	public import avr.device.io_x256a3b;
else version (__AVR_ATxmega256A3BU__)
	public import avr.device.io_x256a3bu;
else version (__AVR_ATxmega256C3__)
	public import avr.device.io_x256c3;
else version (__AVR_ATxmega256D3__)
	public import avr.device.io_x256d3;
else version (__AVR_ATxmega384C3__)
	public import avr.device.io_x384c3;
else version (__AVR_ATxmega384D3__)
	public import avr.device.io_x384d3;
else version (__AVR_ATA5702M322__)
	public import avr.device.io_a5702m322;
else version (__AVR_ATA5782__)
	public import avr.device.io_a5782;
else version (__AVR_ATA5790__)
	public import avr.device.io_a5790;
else version (__AVR_ATA5790N__)
	public import avr.device.io_a5790n;
else version (__AVR_ATA5831__)
	public import avr.device.io_a5831;
else version (__AVR_ATA5272__)
	public import avr.device.io_a5272;
else version (__AVR_ATA5505__)
	public import avr.device.io_a5505;
else version (__AVR_ATA5795__)
	public import avr.device.io_a5795;
else version (__AVR_ATA6285__)
	public import avr.device.io_a6285;
else version (__AVR_ATA6286__)
	public import avr.device.io_a6286;
else version (__AVR_ATA6289__)
	public import avr.device.io_a6289;
else version (__AVR_ATA6612C__)
	public import avr.device.io_a6612c;
else version (__AVR_ATA6613C__)
	public import avr.device.io_a6613c;
else version (__AVR_ATA6614Q__)
	public import avr.device.io_a6614q;
else version (__AVR_ATA6616C__)
	public import avr.device.io_a6616c;
else version (__AVR_ATA6617C__)
	public import avr.device.io_a6617c;
else version (__AVR_ATA664251__)
	public import avr.device.io_a664251;
/* avr1: the following only supported for assembler programs */
else version (__AVR_ATtiny28__)
	public import avr.device.io_tn28;
else version (__AVR_AT90S1200__)
	public import avr.device.io_1200;
else version (__AVR_ATtiny15__)
	public import avr.device.io_tn15;
else version (__AVR_ATtiny12__)
	public import avr.device.io_tn12;
else version (__AVR_ATtiny11__)
	public import avr.device.io_tn11;
else version (__AVR_M3000__)
	public import avr.device.io_m3000;
else
	pragma(msg, __FILE__ ~ "(" ~ __LINE__.stringof ~ "): Warning: unknown device type '"
			~ __AVR_DEVICE_NAME__ ~ "', not defining any IO symbols");
