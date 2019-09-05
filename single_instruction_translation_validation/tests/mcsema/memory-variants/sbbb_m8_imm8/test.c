void leaf() {
  __asm__("sbbb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}