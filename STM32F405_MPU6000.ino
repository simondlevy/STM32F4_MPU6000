#include <SPI.h>

// See https://github.com/betaflight/unified-targets/blob/master/configs/default/BEFH-BETAFPVF405.config
static const uint8_t CS_PIN = PA4;

//SPIClass spi(MOSI_PIN, MISO_PIN, SCLK_PIN);

static const uint8_t LED_PIN  = PB5;


static const uint8_t REG_PWR_MGMT_1 = 0x6B;
static const uint8_t REG_WHO_AM_I   = 0x75;

static uint8_t readRegister(const uint8_t addr)
{
    digitalWrite(CS_PIN, LOW);
    SPI.transfer(addr | 0x80);
    uint8_t result = SPI.transfer(0);
    digitalWrite(CS_PIN, HIGH);
    return result;
}

static uint8_t _id;

void setup(void)
{
    Serial.begin(115200);

    SPI.begin();

    SPI.setBitOrder(MSBFIRST);
    SPI.setClockDivider(SPI_CLOCK_DIV16);
    SPI.setDataMode(SPI_MODE3);

    pinMode(CS_PIN, OUTPUT);

    pinMode(LED_PIN, OUTPUT);


    _id = readRegister(REG_WHO_AM_I);
    delay(100);
}

void loop(void)
{
    static uint8_t ledval;

    digitalWrite(LED_PIN, ledval);
    ledval = !ledval;

    Serial.print("Should be 0x68: 0x");
    Serial.println(_id, HEX);
    delay(500); 
}
