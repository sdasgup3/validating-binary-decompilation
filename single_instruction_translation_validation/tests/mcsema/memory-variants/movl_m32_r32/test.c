void leaf() {
  __asm__("movl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}