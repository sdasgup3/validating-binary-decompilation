void leaf() {
  __asm__("btrw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}