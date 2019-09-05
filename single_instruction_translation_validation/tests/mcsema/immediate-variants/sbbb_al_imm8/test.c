void leaf() {
  __asm__("sbbb $0x77, %al");
  }

void main() {
  leaf();
}