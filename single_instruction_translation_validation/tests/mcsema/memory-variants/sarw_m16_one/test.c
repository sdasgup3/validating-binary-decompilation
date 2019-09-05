void leaf() {
  __asm__("sarw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}