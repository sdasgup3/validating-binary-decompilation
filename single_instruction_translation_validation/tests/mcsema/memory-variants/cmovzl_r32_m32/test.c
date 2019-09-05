void leaf() {
  __asm__("cmovzl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}