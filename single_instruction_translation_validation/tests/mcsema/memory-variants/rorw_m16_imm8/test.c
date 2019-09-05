void leaf() {
  __asm__("rorw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}