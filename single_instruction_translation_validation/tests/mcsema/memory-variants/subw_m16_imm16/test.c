void leaf() {
  __asm__("subw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}