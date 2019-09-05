void leaf() {
  __asm__("cmovbel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}