void leaf() {
  __asm__("btrq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}