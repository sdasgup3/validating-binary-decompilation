void leaf() {
  __asm__("btrw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}