void leaf() {
  __asm__("sarq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}