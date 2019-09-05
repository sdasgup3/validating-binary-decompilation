void leaf() {
  __asm__("sbbb $0x77, %ah");
  }

void main() {
  leaf();
}