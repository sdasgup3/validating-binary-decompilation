void leaf() {
  __asm__("sbbw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}