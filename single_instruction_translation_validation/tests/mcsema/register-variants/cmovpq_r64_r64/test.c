void leaf() {
  __asm__("cmovpq %rcx, %rbx");
  }

void main() {
  leaf();
}