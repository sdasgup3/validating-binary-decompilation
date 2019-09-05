void leaf() {
  __asm__("sbbb $0x77, %bl");
  }

void main() {
  leaf();
}