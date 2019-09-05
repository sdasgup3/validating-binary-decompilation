void leaf() {
  __asm__("subb $0x77, %ah");
  }

void main() {
  leaf();
}