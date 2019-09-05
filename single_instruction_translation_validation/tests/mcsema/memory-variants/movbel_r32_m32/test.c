void leaf() {
  __asm__("movbel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}