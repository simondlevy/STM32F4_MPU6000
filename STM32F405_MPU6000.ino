#include <SPI.h>

// Un-comment for generic STM32F405
//#define FEATHER

#ifdef FEATHER
static const uint8_t CS_PIN   = 0x0A;
#define spi1 SPI
#else
static const uint8_t SCLK_PIN = 0x15;
static const uint8_t MISO_PIN = 0x16;
static const uint8_t MOSI_PIN = 0x17;
static const uint8_t CS_PIN   = 0x14;
SPIClass spi1(MOSI_PIN, MISO_PIN, SCLK_PIN);
#endif


static const uint8_t REG_PWR_MGMT_1 = 0x6B;
static const uint8_t REG_WHO_AM_I   = 0x75;

static uint8_t _id;

static void writeRegister(const uint8_t reg, const uint8_t val)
{
    digitalWrite(CS_PIN, LOW);
    spi1.transfer(reg);
    spi1.transfer(val);
    digitalWrite(CS_PIN, HIGH);
}

static uint8_t readRegister(const uint8_t addr)
{
    digitalWrite(CS_PIN, LOW);
    spi1.transfer(addr | 0x80);
    uint8_t result = spi1.transfer(0);
    digitalWrite(CS_PIN, HIGH);
    return result;
}

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
    Serial.println(_id, HEX);
    delay(200); 
}
