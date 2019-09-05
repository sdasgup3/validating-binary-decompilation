void leaf() {
  __asm__("sarq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}