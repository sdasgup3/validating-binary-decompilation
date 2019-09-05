void leaf() {
  __asm__("cmovnleq %rcx, %rbx");
  }

void main() {
  leaf();
}