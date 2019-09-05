void leaf() {
  __asm__("subl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}