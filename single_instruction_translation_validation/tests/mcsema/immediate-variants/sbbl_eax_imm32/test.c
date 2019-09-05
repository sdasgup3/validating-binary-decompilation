void leaf() {
  __asm__("sbbl $0x77, %eax");
  }

void main() {
  leaf();
}