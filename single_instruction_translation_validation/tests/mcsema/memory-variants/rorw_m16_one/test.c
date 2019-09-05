void leaf() {
  __asm__("rorw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}