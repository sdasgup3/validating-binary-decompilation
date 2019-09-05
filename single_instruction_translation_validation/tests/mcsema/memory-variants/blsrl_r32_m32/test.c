void leaf() {
  __asm__("blsrl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}