void leaf() {
  __asm__("andl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}