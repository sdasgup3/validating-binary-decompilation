void leaf() {
  __asm__("btsw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}