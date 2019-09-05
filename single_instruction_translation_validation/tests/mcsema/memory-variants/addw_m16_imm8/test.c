void leaf() {
  __asm__("addw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}