void leaf() {
  __asm__("addl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}