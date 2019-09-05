void leaf() {
  __asm__("cmovnleq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}