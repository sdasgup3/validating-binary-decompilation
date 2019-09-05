void leaf() {
  __asm__("cmovpel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}