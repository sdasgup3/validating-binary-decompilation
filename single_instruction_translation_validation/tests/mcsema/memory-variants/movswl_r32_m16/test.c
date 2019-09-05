void leaf() {
  __asm__("movswl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}