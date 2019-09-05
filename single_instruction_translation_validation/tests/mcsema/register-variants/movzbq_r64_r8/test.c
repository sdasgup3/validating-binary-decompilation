void leaf() {
  __asm__("movzbq %cl, %rbx");
  }

void main() {
  leaf();
}