void leaf() {
  __asm__("btrw %cx, %bx");
  }

void main() {
  leaf();
}