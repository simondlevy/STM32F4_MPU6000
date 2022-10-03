#include <SPI.h>

// Comment out for generic STM32F405
#define FEATHER

#ifdef FEATHER
static const uint8_t CS_PIN  = 10;
#define spi1 SPI
#else
static const uint8_t SCLK_PIN = PA_5;   // ???
static const uint8_t MISO_PIN = PA_6;   // ??? 
static const uint8_t MOSI_PIN = PA_7;   // ??? 
static const uint8_t CS_PIN   = PA_4;   // ???
SPIClass spi1(MOSI_PIN, MISO_PIN, SCLK_PIN);
#endif

static const uint8_t REG_PWR_MGMT_1 = 0x6B;
static const uint8_t REG_WHO_AM_I   = 0x75;

static uint8_t readRegister(const uint8_t addr)
{
    digitalWrite(CS_PIN, LOW);
    spi1.transfer(addr | 0x80);
    uint8_t result = spi1.transfer(0);
    digitalWrite(CS_PIN, HIGH);
    return result;
}

static uint8_t _id;

void setup(void)
{
    Serial.begin(115200);

#ifdef FEATHER
    spi1.begin();
#else
    spi1.begin(1);
#endif

    spi1.setBitOrder(MSBFIRST);
    spi1.setClockDivider(SPI_CLOCK_DIV16);
    spi1.setDataMode(SPI_MODE3);

    pinMode(CS_PIN, OUTPUT);

    // Check ID
    _id = readRegister(REG_WHO_AM_I);
    delay(100);
}

void loop(void)
{
    Serial.print("Should be 0x68: 0x");
    Serial.println(_id, HEX);
    delay(500); 
}
