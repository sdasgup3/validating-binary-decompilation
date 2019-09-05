void leaf() {
  __asm__("cmovnel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}