void leaf() {
  __asm__("sarw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}